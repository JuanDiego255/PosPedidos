@extends('admin.layout.default')

@section('styles')
    <link rel="stylesheet" href="{{ url('storage/app/public/admin-assets/css/timepicker/jquery.timepicker.min.css') }}">
@endsection

@section('content')
    <div class="row justify-content-between align-items-center mb-3">
        <div class="col-12">
            <h5 class="pages-title fs-2">{{ trans('labels.working_hours') }}</h5>
            <div class="d-flex">
                @include('admin.layout.breadcrumb')
            </div>
        </div>
    </div>

    <div class="row mt-3 mb-7">
        <div class="card border-0 mt-2">
            <div class="card-body">
                <form action="{{ URL::to('/admin/time/store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row border-bottom pb-4 pb-lg-0">
                        <div class="col-12 col-md-8 col-xl-6 mb-lg-4 md-1">
                            <label class="form-label">
                                {{ trans('labels.time_interval') }}
                                <span class="text-danger"> *</span>
                            </label>
                            <div class="d-flex">
                                <input type="text" class="form-control w-50 time-interval {{ session()->get('direction') == 2 ? 'input-group-rtl' : '' }}" name="interval_time"
                                    placeholder="{{ trans('labels.time_interval') }}" aria-describedby="button-addon2"
                                    value="{{ $settingsdata->interval_time }}" required>
                                <select name="interval_type" class="form-select w-25 working-hoursselect" id="">
                                    <option value="1" {{ $settingsdata->interval_type == 1 ? 'selected' : '' }}>
                                        {{ trans('labels.minute') }}</option>
                                    <option value="2" {{ $settingsdata->interval_type == 2 ? 'selected' : '' }}>
                                        {{ trans('labels.hour') }}</option>
                                </select>
                            </div>
                            @error('interval_time')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <div class="row pt-2 pt-md-3">
                        <div class="col-md-2 text-start mb-3 d-none d-lg-block d-xl-block d-xxl-block">
                            <label>{{ trans('labels.day') }}</label>
                        </div>
                        <div class="col-md-2 text-start mb-3 d-none d-lg-block d-xl-block d-xxl-block">
                            <label>{{ trans('labels.opening_time') }}</label>
                        </div>
                        <div class="col-md-2 text-start mb-3 d-none d-lg-block d-xl-block d-xxl-block">
                            <label>{{ trans('labels.break_start') }}</label>
                        </div>
                        <div class="col-md-2 text-start mb-3 d-none d-lg-block d-xl-block d-xxl-block">
                            <label>{{ trans('labels.break_end') }}</label>
                        </div>
                        <div class="col-md-2 text-start mb-3 d-none d-lg-block d-xl-block d-xxl-block">
                            <label>{{ trans('labels.closing_time') }}</label>
                        </div>
                        <div class="col-md-2 text-start mb-3 d-none d-lg-block d-xl-block d-xxl-block">
                            <label>{{ trans('labels.always_closed') }}</label>
                        </div>
                    </div>

                    @foreach ($gettime as $time)
                        <div class="row my-2">
                            <div class="col-md-2">
                                <label class="form-label text-center fw-bold">
                                    @switch(strtolower($time->day))
                                        @case('monday')
                                            {{ trans('labels.monday') }}
                                            @break
                                        @case('tuesday')
                                            {{ trans('labels.tuesday') }}
                                            @break
                                        @case('wednesday')
                                            {{ trans('labels.wednesday') }}
                                            @break
                                        @case('thursday')
                                            {{ trans('labels.thursday') }}
                                            @break
                                        @case('friday')
                                            {{ trans('labels.friday') }}
                                            @break
                                        @case('saturday')
                                            {{ trans('labels.saturday') }}
                                            @break
                                        @case('sunday')
                                            {{ trans('labels.sunday') }}
                                            @break
                                        @default
                                            {{ $time->day }}
                                    @endswitch
                                </label>
                                <input type="hidden" name="day[]" value="{{ $time->day }}">
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control timepicker"
                                    placeholder="{{ trans('labels.opening_time') }}" id="open{{ $time->day }}"
                                    name="open_time[]"
                                    @if ($time->is_always_close == '2') value="{{ $time->open_time }}" 
                                    @else value="{{ trans('labels.closed') }}" readonly="" @endif>
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control timepicker"
                                    placeholder="{{ trans('labels.break_start') }}" id="break_start{{ $time->day }}"
                                    name="break_start[]" @if ($time->is_always_close == '2') value="{{ $time->break_start }}" 
                                    @else value="{{ trans('labels.closed') }}" readonly="" @endif>
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control timepicker"
                                    placeholder="{{ trans('labels.break_end') }}" id="break_end{{ $time->day }}"
                                    name="break_end[]" @if ($time->is_always_close == '2') value="{{ $time->break_end }}" 
                                    @else value="{{ trans('labels.closed') }}" readonly="" @endif>
                            </div>
                            <div class="col-md-2">
                                <input type="text" class="form-control timepicker"
                                    placeholder="{{ trans('labels.closing_time') }}" id="close{{ $time->day }}"
                                    name="close_time[]"
                                    @if ($time->is_always_close == '2') value="{{ $time->close_time }}" 
                                    @else value="{{ trans('labels.closed') }}" readonly="" @endif>
                            </div>
                            <div class="col-md-2">
                                <select class="form-control form-select" name="is_always_close[]"
                                    id="is_always_close{{ $time->day }}">
                                    <option value="" disabled>{{ trans('labels.select') }}</option>
                                    <option value="1" @if ($time->is_always_close == '1') selected @endif>
                                        {{ trans('messages.yes') }}</option>
                                    <option value="2" @if ($time->is_always_close == '2') selected @endif>
                                        {{ trans('messages.no') }}</option>
                                </select>
                            </div>
                        </div>
                    @endforeach

                    <div class="form-group col-md-12 text-end">
                        <button
                            @if (env('Environment') == 'sendbox') type="button" onclick="myFunction()" @else type="submit" @endif
                            class="btn btn-success btn-succes m-1">{{ trans('labels.save') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{ url('storage/app/public/admin-assets/js/timepicker/jquery.timepicker.min.js') }}"></script>
    <script src="{{ url(env('ASSETSPATHURL') . 'admin-assets/js/workinghours.js') }}"></script>
    <script>
        $(document).ready(function() {
            // Configurar el selector de tiempo
            $('.timepicker').timepicker({
                timeFormat: 'HH:mm', // Formato de hora de 24 horas
                interval: 15, // Intervalo de tiempo en minutos
                dropdown: true,
                scrollbar: true
            });

            // Convertir el tiempo de 24 horas a formato AM/PM
            $('.timepicker').on('changeTime', function() {
                var time = $(this).val();
                var formattedTime = formatAMPM(time);
                $(this).val(formattedTime);
            });

            function formatAMPM(time) {
                var hours = parseInt(time.substr(0, 2));
                var minutes = time.substr(3, 2);
                var ampm = hours >= 12 ? 'PM' : 'AM';
                hours = hours % 12;
                hours = hours ? hours : 12; // the hour '0' should be '12'
                var strTime = hours + ':' + minutes + ' ' + ampm;
                return strTime;
            }
        });

    </script>
@endsection
