# CID

CID — это специальный способ вставить картинки или другие медиафайлы прямо в тело письма, чтобы они отображались сразу, без необходимости скачивать их отдельно.&#x20;

1. В письме картинки вставляются через тег `<img src='cid:уникальный_ID'>`.
2. Уникальный ID (Content-ID) связывает картинку с этим тегом.
3. В базе данных хранятся эти ID и сами картинки.
4. При отображении письма программа ищет картинки по этим ID и показывает их.

> Такая конструкция работает для веб-страниц, однако Outlook может не отображать такие изображения. Особенно это актуально для Office 2019.

## Настройки подключения к Exchange

<pre class="language-html" data-overflow="wrap"><code class="lang-html">$exchangeVersion = [Microsoft.Exchange.WebServices.Data.ExchangeVersion]::Exchange2016 
$service = New-Object Microsoft.Exchange.WebServices.Data.ExchangeService($exchangeVersion) 
<strong>$service.Credentials = New-Object System.Net.NetworkCredential($        , $        ) 
</strong>$service.Url = "https://        /        /Exchange.asmx"
</code></pre>

## Создание письма

```html
$email = New-Object Microsoft.Exchange.WebServices.Data.EmailMessage($service) 
$email.Subject = $subject 
$email.Body = New-Object Microsoft.Exchange.WebServices.Data.MessageBody( 
    [Microsoft.Exchange.WebServices.Data.BodyType]::HTML, 
    "<html><body><p style = `"font-size: 15px; font-family: Calibri;`">${$header}<br>${$link}<br></p><img src='cid:MyImage'>$($        )</body></html>"
)
$emailAddresses = $Row.emails -split ';' | ForEach-Object { $_.Trim() } 
foreach ($address in $emailAddresses) { 
    $email.ToRecipients.Add($address) 
}
```

## Добавление вложения с ContentId

```html
$filePath = $        
$attachment = $email.Attachments.AddFileAttachment($filePath) 
$attachment.ContentId = "MyImage" 
$attachment.IsInline = $true
```

## Отправка письма

```html
$email.SendAndSaveCopy()
```

<figure><img src="../../../../../.gitbook/assets/изображение (5) (1).png" alt=""><figcaption></figcaption></figure>
