[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Kartička zákazníka</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="container">
    <div class="person-info">
        <div class="photo-border"></div>
        <img src="${person.photoURL}" class="photo" alt="profilové foto"/>
        <div class="row">
            <span class="label">Jméno</span>
            <span class="value">${person.givenName}</span>
        </div>
        <div class="row">
            <span class="label">Příjmení</span>
            <span class="value">${person.surname}</span>
        </div>
        <div class="row">
            <span class="label">Datum narození</span>
            <span class="value">${person.birthDate.format('LONG_DATE')}</span>
        </div>

        [#if person.age < 30 ]
            <div class="row">
                <span class="label">Věk</span>
                <span class="value">${person.age}</span>
            </div>
        [#elseif person.age > 60]
            <div class="row">
                <span class="label">Věk</span>
                <span class="value">60+</span>
            </div>
        [/#if]
    </div>
    <div class="address">
        <div class="address-line">${address.streetAndNumbers}</div>
        <div class="address-line">${address.zipCode} ${address.city}</div>
    </div>
</div>
</body>
</html>
