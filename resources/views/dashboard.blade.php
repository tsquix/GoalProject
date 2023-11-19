<head>  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script></head>
<script>var csrfToken = "{{ csrf_token() }}";</script>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            
        </h2>
    </x-slot>
<div class="container">

    <div class=" d-flex justify-content-center">
        <div id="create">
            <a>
                <h1 style="font-size: 50px">create
                <img src="https://bi.im-g.pl/im/45/d0/1c/z30212933IH,Dolar.jpg" alt="" srcset=""> </h1>
            </a>
       </div>
            @include('frontend.oldtableDisplay')
       
    </div>
<script src="{{ asset('assets/js/scriptCreate.js') }}"></script> 
    </div>
</x-app-layout>
