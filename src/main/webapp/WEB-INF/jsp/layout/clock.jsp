<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <style>
        p {
            margin: 0;
            padding: 0;
        }

        #clock {
            font-family: 'Share Tech Mono', monospace;
            color: #ffffff;
            margin: 10px 0px 10px 38px;
            float: left;
            color: #daf6ff;
            text-shadow: 0 0 20px #0aafe6, 0 0 20px rgba(10, 175, 230, 0);
        }
        #clock .time {
            letter-spacing: 0.05em;
            font-size: 40px;
            padding: 5px 0;
        }
        #clock .date {
            letter-spacing: 0.1em;
            font-size: 16px;
        }
        #clock .text {
            letter-spacing: 0.1em;
            font-size: 12px;
            padding: 20px 0 0;
        }
    </style>

    <script type="text/javascript" src="${ctx }/static/clock/vue.min.js"></script>

<div id="clock">
    <p class="date">{{ date }}</p>
    <p class="time">{{ time }}</p>
</div>

<script>
    var clock = new Vue({
        el: '#clock',
        data: {
            time: '',
            date: ''
        }
    });

    var week = ['星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
    var timerID = setInterval(updateTime, 1000);
    updateTime();
    function updateTime() {
        var cd = new Date();
        clock.time = zeroPadding(cd.getHours(), 2) + ':' + zeroPadding(cd.getMinutes(), 2) + ':' + zeroPadding(cd.getSeconds(), 2);
        clock.date = zeroPadding(cd.getFullYear(), 4) + '-' + zeroPadding(cd.getMonth()+1, 2) + '-' + zeroPadding(cd.getDate(), 2) + ' ' + week[cd.getDay()];
    };

    function zeroPadding(num, digit) {
        var zero = '';
        for(var i = 0; i < digit; i++) {
            zero += '0';
        }
        return (zero + num).slice(-digit);
    }
</script>