package 'apache2'

service 'apache2' do
    supports :status => true
    action [ :enable, :start ]
end

file '/var/www/html/index.html' do
    mode 0644
    content '<!DOCTYPE html>
<html lang="pt_BR">
<head>
<meta charset="utf-8">
<title>Apache2 via Chef</title>
</head>
<body>
<h1>Olá mundo!</h1>
</body>
</html>'
end
