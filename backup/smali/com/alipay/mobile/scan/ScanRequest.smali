.class public Lcom/alipay/mobile/scan/ScanRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/scan/ScanRequest$ScanType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/scan/ScanRequest$ScanType;->BARCODE:Lcom/alipay/mobile/scan/ScanRequest$ScanType;

    iput-object v0, p0, Lcom/alipay/mobile/scan/ScanRequest;->a:Lcom/alipay/mobile/scan/ScanRequest$ScanType;

    return-void
.end method


# virtual methods
.method public getScanType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/scan/ScanRequest;->a:Lcom/alipay/mobile/scan/ScanRequest$ScanType;

    iget-object v0, v0, Lcom/alipay/mobile/scan/ScanRequest$ScanType;->typeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/scan/ScanRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setScanType(Lcom/alipay/mobile/scan/ScanRequest$ScanType;)Lcom/alipay/mobile/scan/ScanRequest;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/scan/ScanRequest;->a:Lcom/alipay/mobile/scan/ScanRequest$ScanType;

    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/alipay/mobile/scan/ScanRequest;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/scan/ScanRequest;->b:Ljava/lang/String;

    return-object p0
.end method
