.class public Lcom/alipay/mobile/nfc/strategy/BusinessJumper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NFC/BusinessJumper"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->d:Z

    iput-object p1, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method public static a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/nfc/strategy/BusinessJumper;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-interface {v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-interface {v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->d:Z

    return-void
.end method
