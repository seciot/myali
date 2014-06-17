.class public Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->d:Z

    return-void
.end method

.method public static a()Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;-><init>()V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->c:I

    return-void
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->b:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->c:I

    iput-boolean p3, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->d:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->c:I

    return v0
.end method
