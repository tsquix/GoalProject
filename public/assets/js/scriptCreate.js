document.addEventListener("DOMContentLoaded", function () {
    function createonclick() {
        const create = document.querySelector("#create");

        create.addEventListener("click", function () {
            $.ajax({
                type: "POST",
                url: "/newTable",
                data: { action: "call_this", _token: csrfToken },
                success: function (response) {
                    console.log("pomyślnie utworzono nową tabelę");
                    // Przekierowanie użytkownika na inną stronę po sukcesie
                    window.location.href = "/goal/" + response; // response to zwrócone userTableID
                },
                error: function (error) {
                    console.error("Błąd przesyłania danych: " + error);
                },
            });
        });
    }
    createonclick();
});
