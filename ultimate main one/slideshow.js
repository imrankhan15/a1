 $(document).ready(function () {
        var i = 0;
        var a = 2000;
        var b = 4000;
        var c = 6000;
        var d = 8000;
        var e = 0;
        for (i = 0; ; i++) {
            if (e == 0) {
                e = 1;
                setTimeout(function () { $("#Image1").fadeToggle(); }, d - 8000+1000);
                setTimeout(function () { $("#Image2").fadeToggle(); }, d - 8000+1000);
                setTimeout(function () { $("#Image3").fadeToggle(); }, d - 8000+1000);
                setTimeout(function () { $("#Image4").fadeToggle(); }, d - 8000+1000);


            }

            else if (e == 1) {
                setTimeout(function () { $("#Image1").fadeToggle(); }, a);
                setTimeout(function () { $("#Image2").fadeToggle(); }, b);
                setTimeout(function () { $("#Image3").fadeToggle(); }, c);
                setTimeout(function () { $("#Image4").fadeToggle(); }, d);

                a = a + 8000;
                b = b + 8000;
                c = c + 8000;
                d = d + 8000;
                e = 0;
            }
        }


    });