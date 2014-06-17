.class public Lcom/alipay/mobile/base/config/SwitchConfigUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
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

    sput-object v0, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->a:Lcom/alipay/mobile/base/config/ConfigService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->a:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
