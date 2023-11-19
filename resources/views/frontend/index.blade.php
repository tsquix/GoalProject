<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.scss') }}">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      @vite(['resources/css/app.css', 'resources/js/app.js'])

        <!-- Styles -->
        @livewireStyles
        
</head>
  <body> 
    @livewire('navigation-menu')
            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white shadow">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif
          <!-- <div class=".container"> -->
            <div class="table-responsive">
            @include ('frontend.weekdays')
         @include('frontend.goaldata')
          <p>Wartość id: {{ $id }}</p>

   
       @include('frontend.progress')
       @include('frontend.goalweek')
</div>
  @auth
                        <!-- <a href="{{ url('/dashboard') }}" class="font-semibold text-gray-600 hover:text-gray-900 focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Dashboard</a><br> -->
                        
                    @endauth
      <script>
    var csrfToken = "{{ csrf_token() }}";
    var userDataDINMO = {!! json_encode($userDataDINMO) !!};
</script>
      
<script src="{{ asset('assets/js/script.js') }}"></script> 

  </body>
</html>
