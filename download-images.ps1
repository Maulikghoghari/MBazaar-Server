$base = "d:\Maulik\projects\M-Bazaar\server\public\images"

$allImages = @(
    # Apple MacBook
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800"; name="macbook-1.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=800"; name="macbook-2.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800"; name="macbook-3.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1511385348-a52b4a160dc2?w=800"; name="macbook-4.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1537498425277-c283d32ef9db?w=800"; name="macbook-5.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=800"; name="macbook-6.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?w=800"; name="macbook-7.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1542393545-10f5cde2c810?w=800"; name="macbook-8.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800"; name="macbook-9.jpg"}
    @{cat="Apple MacBook"; url="https://images.unsplash.com/photo-1515378791036-0648a3ef77b2?w=800"; name="macbook-10.jpg"}
    # Smartphones
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800"; name="smartphone-1.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=800"; name="smartphone-2.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1565849904461-04a58ad377e0?w=800"; name="smartphone-3.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1580910051074-3eb694886505?w=800"; name="smartphone-4.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1574944985070-8f30c4397e3c?w=800"; name="smartphone-5.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=800"; name="smartphone-6.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1512499617640-c74ae3a79d37?w=800"; name="smartphone-7.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1533228876829-65c94e7b5025?w=800"; name="smartphone-8.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1585060544812-6b45742d762f?w=800"; name="smartphone-9.jpg"}
    @{cat="Smartphones"; url="https://images.unsplash.com/photo-1567581935884-3349723552ca?w=800"; name="smartphone-10.jpg"}
    # Smart TVs
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1593784991095-a205069470b6?w=800"; name="tv-1.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1577979749830-f1d742b96791?w=800"; name="tv-2.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1461151304267-38535e780c79?w=800"; name="tv-3.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1509281373149-e957c6296406?w=800"; name="tv-4.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800"; name="tv-5.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1567690187548-f07b1d7bf5a9?w=800"; name="tv-6.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1558888401-3cc1de77652d?w=800"; name="tv-7.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1601944179066-29786cb9d32a?w=800"; name="tv-8.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1571415060414-0b615d011116?w=800"; name="tv-9.jpg"}
    @{cat="Smart TVs"; url="https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?w=800"; name="tv-10.jpg"}
    # Refrigerators
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=800"; name="fridge-1.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1571175443880-49e1d25b2bc5?w=800"; name="fridge-2.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1626806787461-102c1bfaaea1?w=800"; name="fridge-3.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1588854337236-6889d631faa8?w=800"; name="fridge-4.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1583947215259-38e31be8751f?w=800"; name="fridge-5.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1536304929831-ee1ca9d44906?w=800"; name="fridge-6.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1584269600464-37b1b58a9fe7?w=800"; name="fridge-7.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1584269600519-112d071b35e6?w=800"; name="fridge-8.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800"; name="fridge-9.jpg"}
    @{cat="Refrigerators"; url="https://images.unsplash.com/photo-1482049016688-2d3e1b311543?w=800"; name="fridge-10.jpg"}
    # Headphones
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800"; name="headphones-1.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1546435770-a3e426bf472b?w=800"; name="headphones-2.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1583394838336-acd977736f90?w=800"; name="headphones-3.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800"; name="headphones-4.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=800"; name="headphones-5.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?w=800"; name="headphones-6.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1572536147248-ac59a8abfa4b?w=800"; name="headphones-7.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1520170350707-b2da59970118?w=800"; name="headphones-8.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1545127398-14699f92334b?w=800"; name="headphones-9.jpg"}
    @{cat="Headphones"; url="https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=800"; name="headphones-10.jpg"}
    # Cameras
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=800"; name="camera-1.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=800"; name="camera-2.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1512790182412-b19e6d61bc39?w=800"; name="camera-3.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=800"; name="camera-4.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1510127034890-ba27508e9f1c?w=800"; name="camera-5.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1606986628680-5a3d7bfa5d3e?w=800"; name="camera-6.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1500634245200-e5245c7e74ef?w=800"; name="camera-7.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1519638399535-1b036603ac77?w=800"; name="camera-8.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1564466809058-bf4114d55352?w=800"; name="camera-9.jpg"}
    @{cat="Cameras"; url="https://images.unsplash.com/photo-1581591524425-c7e0978865fc?w=800"; name="camera-10.jpg"}
    # Tablets
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800"; name="tablet-1.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1561154464-82e9adf32764?w=800"; name="tablet-2.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1585790050230-5dd28404ccb9?w=800"; name="tablet-3.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1542751371-adc38448a05e?w=800"; name="tablet-4.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1558655146-d09347e92766?w=800"; name="tablet-5.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=800"; name="tablet-6.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1527698266440-12104e498b76?w=800"; name="tablet-7.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1510519138161-584417b2b736?w=800"; name="tablet-8.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1589739900243-4b52cd9b104e?w=800"; name="tablet-9.jpg"}
    @{cat="Tablets"; url="https://images.unsplash.com/photo-1587614382346-4ec70e388b28?w=800"; name="tablet-10.jpg"}
)

$total = 0
$success = 0

foreach ($img in $allImages) {
    $folder = Join-Path $base $img.cat
    if (-not (Test-Path $folder)) { New-Item -ItemType Directory -Force -Path $folder | Out-Null }
    $outPath = Join-Path $folder $img.name
    $total++
    try {
        Invoke-WebRequest -Uri $img.url -OutFile $outPath -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" -TimeoutSec 20
        $size = (Get-Item $outPath -ErrorAction SilentlyContinue).Length
        if ($null -eq $size -or $size -lt 5000) {
            Remove-Item $outPath -Force -ErrorAction SilentlyContinue
            Write-Host "SKIP $($img.cat)\$($img.name)" -ForegroundColor DarkYellow
        } else {
            $success++
            $kb = [math]::Round($size / 1024, 1)
            Write-Host "OK   $($img.cat)\$($img.name) ($kb KB)" -ForegroundColor Green
        }
    } catch {
        Write-Host "FAIL $($img.cat)\$($img.name)" -ForegroundColor Red
    }
    Start-Sleep -Milliseconds 100
}

Write-Host ""
Write-Host "Result: $success / $total downloaded." -ForegroundColor Cyan

# Show final count per category
Write-Host ""
Write-Host "Files per category:" -ForegroundColor Yellow
Get-ChildItem $base -Directory | ForEach-Object {
    $count = (Get-ChildItem $_.FullName -File).Count
    Write-Host "  $($_.Name): $count files"
}
