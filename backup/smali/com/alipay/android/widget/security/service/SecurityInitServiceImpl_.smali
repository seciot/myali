.class public final Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;
.super Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->e:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final afterSetContentView_()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final rebind(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->a()V

    return-void
.end method
