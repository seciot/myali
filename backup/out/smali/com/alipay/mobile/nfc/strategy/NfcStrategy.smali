.class public Lcom/alipay/mobile/nfc/strategy/NfcStrategy;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NFC/Strategy"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->d:Ljava/lang/String;

    const-string/jumbo v0, "NFC_BUSINESS_JUMPABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a:Ljava/lang/String;

    const-string/jumbo v0, "NFC_QUICKPASS_ENABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b:Ljava/lang/String;

    const-string/jumbo v0, "NFC_BJRECHARGE_ENABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "YES"

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->d:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
