$(document).ready(function () {
    var clicks = 0;
    var languages = [];

    $('.sin_voltear').click(function () {
        $(this).toggleClass('flipped');
        $(this).removeClass('sin_voltear');
        $(this).addClass('volteada');
        clicks+= 1;

        let language = $(this).find('.card_back').find('.card-img').attr('class').split(' ').pop();
        languages.push(language);

        if (clicks >= 2){

            let iguales = languages.every(function(element) {
                return element === languages[0];
            });

            clicks = 0;
            setTimeout(function(){
                if (!iguales) {
                    $('.volteada').each(function () {
                        $(this).toggleClass('flipped');
                        $(this).removeClass('volteada');
                        $(this).addClass('sin_voltear');
                    });
                } else {
                    $('.volteada').each(function () {
                        $(this).removeClass('volteada');
                        $(this).off('click');
                    });
                }
            }, 800);

            languages = [];
        }
    });
});
