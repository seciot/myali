.class public final enum Lcom/alipay/mobile/scan/ScanRequest$DataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/scan/ScanRequest$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/scan/ScanRequest$DataType;

.field public static final enum RAWDATA:Lcom/alipay/mobile/scan/ScanRequest$DataType;


# instance fields
.field typeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/scan/ScanRequest$DataType;

    const-string/jumbo v1, "RAWDATA"

    const-string/jumbo v2, "rawData"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/scan/ScanRequest$DataType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/scan/ScanRequest$DataType;->RAWDATA:Lcom/alipay/mobile/scan/ScanRequest$DataType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/mobile/scan/ScanRequest$DataType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/scan/ScanRequest$DataType;->RAWDATA:Lcom/alipay/mobile/scan/ScanRequest$DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/scan/ScanRequest$DataType;->$VALUES:[Lcom/alipay/mobile/scan/ScanRequest$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/alipay/mobile/scan/ScanRequest$DataType;->typeStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/scan/ScanRequest$DataType;
    .locals 1

    const-class v0, Lcom/alipay/mobile/scan/ScanRequest$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/scan/ScanRequest$DataType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/scan/ScanRequest$DataType;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/scan/ScanRequest$DataType;->$VALUES:[Lcom/alipay/mobile/scan/ScanRequest$DataType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/scan/ScanRequest$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/scan/ScanRequest$DataType;

    return-object v0
.end method
