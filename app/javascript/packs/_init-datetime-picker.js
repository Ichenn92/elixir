require("moment/locale/fr")
require("tempusdominus-bootstrap-4")

const initDatetimePicker = () => {
    $.fn.datetimepicker.Constructor.Default = $.extend({},
        $.fn.datetimepicker.Constructor.Default,
        { icons:
            { time: 'fas fa-clock',
            date: 'fas fa-calendar',
            up: 'fas fa-arrow-up',
            down: 'fas fa-arrow-down',
            previous: 'fas fa-arrow-circle-left',
            next: 'fas fa-arrow-circle-right',
            today: 'far fa-calendar-check-o',
            clear: 'fas fa-trash',
            close: 'far fa-times' } });
            $('#datetimepicker1').datetimepicker();
}

export { initDatetimePicker };