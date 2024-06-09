<html>
    <body>
        <script type='text/javascript'>
            function initEmbeddedMessaging() {
                try {
                    embeddedservice_bootstrap.settings.language = 'fr'; // For example, enter 'en' or 'en-US'

                    embeddedservice_bootstrap.init(
                        '00DWx000001UNhl',
                        'MIA_ESD',
                        'https://manao-mia-1-dev-ed.develop.my.site.com/ESWMIAESD1717954031803',
                        {
                            scrt2URL: 'https://manao-mia-1-dev-ed.develop.my.salesforce-scrt.com'
                        }
                    );
                } catch (err) {
                    console.error('Error loading Embedded Messaging: ', err);
                }
            };
        </script>
        <script type='text/javascript' src='https://manao-mia-1-dev-ed.develop.my.site.com/ESWMIAESD1717954031803/assets/js/bootstrap.min.js' onload='initEmbeddedMessaging()'></script>
    </body>
</html>