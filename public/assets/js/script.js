"use sctrict";
//counts columns i 4th row

document.addEventListener("DOMContentLoaded", function () {
    const table = document.querySelector("#mainTable");
    //let tableLength = table.rows[3].cells.length - 1; // 30
    let tableLength = userDataDINMO; //BIERZE userdatadinmo z middleware i przez json w index.blade.php przekazuje tutaj

    const progressCounter = function (tableLen) {
        for (let j = 1; j <= tableLen; j++) {
            let checkbox = document.querySelectorAll(".value" + j);
            let total = checkbox.length; // ilość rzędów (checkboxów) w jednej kolumnie
            let tmp = total;
            let completeCount = 0;
            let incompleteCount = total;

            let completeElement = document.querySelector("#complete" + j);
            let incompleteElement = document.querySelector("#incomplete" + j);
            let progressPercent = document.querySelector("#tdPercent" + j);

            for (let i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked) {
                    completeCount++;
                    incompleteCount--;
                }
            }
            let percentage = (completeCount / total) * 100; // INFO
            let formattedPercentage = parseInt(percentage) + "%";

            completeElement.innerText = completeCount;
            incompleteElement.innerText = incompleteCount;
            progressPercent.innerText = formattedPercentage;
        }
    };
    progressCounter(tableLength); //execute żeby przy załadowaniu strony zaaktualizować progress wzgledem danych z bazydanych
    // const removeClass = function (cell) {
    //     const colorArr = [
    //         'color20',
    //         'color2040',
    //         'color4060',
    //         'color6080',
    //         'color8010',
    //     ];
    //     for (let i = 0; i < colorArr.length; i++) {
    //         if (cell.classList.contains(colorArr[i])) {
    //             cell.classList.remove(colorArr[i]);
    //         }
    //     }
    // };
    const progressColorChange = function () {
        let newColor;
        let progCell = [];
        let percent = [];

        const totalToComplete =
            (parseInt(document.querySelector("#incomplete1").textContent) +
                parseInt(document.querySelector("#complete1").textContent)) *
            10;
        for (let i = 1; i <= userDataDINMO; i++) {
            percent[i - 1] = parseInt(
                document.querySelector("#tdPercent" + i).textContent
            );
            progCell[i] = document.querySelector("#tdPercent" + i);
        }
        for (let k = 0; k < userDataDINMO; k++) {
            for (let j = 1; j <= totalToComplete / 10; j++) {
                if (percent[k] === 0) {
                    progCell[k + 1].style.backgroundColor = "#edf7f3";
                } else {
                    let theColor = (percent[k] / totalToComplete) * 15;
                    const originalColor = tinycolor("#e2fadf");
                    newColor = originalColor.darken(1 + theColor).toString();
                    progCell[k + 1].style.backgroundColor = newColor;
                }
            }
        }
    };
    progressColorChange();
    const idExtract = function (id) {
        let stringDivide = id;
        let stringLength = stringDivide.length;
        let dotPosition = stringDivide.indexOf(".");
        let planID = stringDivide.substring(0, dotPosition);
        let valID = stringDivide.substring(dotPosition + 1, stringLength);
        return { planID, valID };
    };

    //update database handler and on change progresscounter exec

    let goalId = parseInt(window.location.pathname.split("/").pop()); //TABLEUSERID
    if (isNaN(goalId)) {
        goalId = 1;
    }

    $(document).ready(function () {
        $(document).on("change", 'input[type="checkbox"]', function () {
            // const inputCheckbox = document.querySelector('input[name=checkbox]');

            progressCounter(tableLength);
            progressColorChange();
            let checkboxID = $(this).attr("id");
            let { planID, valID } = idExtract(checkboxID);

            if (this.checked) {
                let status = 1;
                $.ajax({
                    type: "POST",
                    url: "/updateChecked",
                    data: {
                        _token: csrfToken,
                        planID: planID,
                        valID: valID,
                        status: status,
                        goalId: goalId,
                    },
                    success: function (response) {
                        console.log("Check event : " + planID + " " + valID);
                        console.log(response);
                        // Handle the response from the server if needed
                    },
                    error: function (error) {
                        console.error("Error sending data: " + error);
                    },
                });
            } else if (!this.checked) {
                let status = 0;
                $.ajax({
                    type: "POST",
                    url: "/updateChecked",
                    data: {
                        _token: csrfToken,
                        planID: planID,
                        valID: valID,
                        status: status,
                        goalId: goalId,
                    },
                    success: function (response) {
                        console.log("uncheck event: " + planID + " " + valID);
                    },
                    error: function (error) {
                        console.error("Error sending data: " + error);
                    },
                });
            }
        });
    });
    const updateName = function (planId, newText) {
        $.ajax({
            type: "POST",
            url: "/updateName",
            data: {
                _token: csrfToken,
                planId: planId,
                newText: newText,
                goalId: goalId,
            },
            success: function (response) {
                console.log(response);
            },
        });
    };
    function taskNameChg() {
        const text = this.textContent;
        let taskID = this.getAttribute("id");
        console.log(taskID);
        const input = document.createElement("input");
        input.type = "text";
        input.spellcheck = false;
        input.classList.add("form-control", "inputEdit");
        // input.setAttribute('id', 'validationFormCheck1');
        input.ariaLabel = "Habit name";
        input.value = text;

        this.textContent = "";
        this.appendChild(input);
        input.focus();
        let newText;
        // FIXME da sie ustawic input pusty  trzeba jakos poklikac dziwnie xd, po f5 dziala normalnie - resetuje sie  do poprzedniego name

        const isEmpty = (str) => !str.trim().length;
        input.addEventListener("keydown", function (event) {
            if (event.key === "Escape" || event.key === "Enter") input.blur();
        });
        input.addEventListener("blur", function () {
            newText = input.value;
            //PODSTAwowa walidacja//TODO POLEPSZYC WALIDACJE I WYSWIETLIC KOMUNIKAT W PRZYPADKU CHUJOWEGO INPUTU
            if (
                newText.length > 2 &&
                newText.length < 20 &&
                newText !== "" &&
                !isEmpty(newText)
            ) {
                this.parentElement.textContent = newText;
                updateName(taskID, newText);
            } else {
                console.log("za krórtki lub za długi tekst");
                this.parentElement.textContent = text;
            }
        });
    }
    const tasknameUpdate = function () {
        let tasknames = document.querySelectorAll(".task-name");
        tasknames.forEach(function (taskname) {
            taskname.removeEventListener("click", taskNameChg);
        });
        tasknames.forEach(function (taskname) {
            taskname.addEventListener("click", taskNameChg);
        });
    };

    const addNewPlan = function () {
        let newPlanQuant = planQuant;
        const btn = document.querySelector("#navAddPlan");
        const mainTb = document.querySelector(".upperTbody");
        btn.addEventListener("click", function () {
            if (planQuant < 10) {
                let tr = document.createElement("tr");
                let th = document.createElement("th");
                let td = document.createElement("td");
                let div = document.createElement("div");
                let input = document.createElement("input");
                //
                tr.classList.add("trUpper");
                th.setAttribute("scope", "col");
                th.classList.add(
                    "w-15",
                    "text-nowrap",
                    "planLicz",
                    "task-name"
                );
                th.innerText = "testowy th"; //TODO zmienic default nazwe
                //td.classList.add("current-day");

                div.classList.add("form-check", "checkbox-xl");

                input.classList.add("form-check-input");
                input.setAttribute("type", "checkbox");

                mainTb.appendChild(tr);
                tr.appendChild(th);
                planQuant++;
                th.setAttribute("id", "plan" + planQuant);
                let addPlan = 1; // ADD

                $.ajax({
                    type: "POST",
                    url: "/planQuantAdj",
                    data: {
                        _token: csrfToken,
                        planQuant: planQuant,
                        goalId: goalId,
                        addPlan: addPlan,
                    },
                    success: function (response2) {
                        console.log(response2);
                    },
                    error: function (error) {
                        console.error("Error sending data: " + error);
                    },
                });

                for (let i = 1; i < userDataDINMO + 1; i++) {
                    let td = document.createElement("td");
                    let div = document.createElement("div");
                    let input = document.createElement("input");

                    div.classList.add("form-check", "checkbox-xl");

                    input.classList.add("form-check-input", "value" + i);
                    input.setAttribute("type", "checkbox");
                    input.setAttribute("id", "plan" + planQuant + ".val" + i);

                    tr.appendChild(td);
                    td.appendChild(div);
                    div.appendChild(input);
                }
                console.log(planQuant);
                progressCounter(tableLength);
            } else {
                alert("you ve reached max amm of plan sizes"); //TODO make proper alert
            }
            tasknameUpdate();
        });
    };
    const removePlan = function () {
        const btn = document.querySelector("#navRemovePlan");
        const table = document.getElementById("mainTable");
        console.log(planQuant);

        let removePlan = 1; // REMOVE
        btn.addEventListener("click", function () {
            let lastRow = table.rows[table.rows.length - 1];
            if (lastRow) table.deleteRow(table.rows.length - 3);

            planQuant--;
            $.ajax({
                type: "POST",
                url: "/planQuantAdj",
                data: {
                    _token: csrfToken,
                    planQuant: planQuant,
                    goalId: goalId,
                    removePlan: removePlan,
                },
                success: function (response) {
                    // console.log(
                    //     "Plan quant adjusted (removed), newplanquant: " +
                    //         planQuant
                    // );
                    console.log(response);
                },
                error: function (error) {
                    console.error("Error sending data: " + error);
                },
            });
            progressCounter(tableLength);
        });
    };
    addNewPlan();
    removePlan();
    tasknameUpdate();
});
