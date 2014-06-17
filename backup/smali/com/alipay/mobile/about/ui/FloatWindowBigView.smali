.class public Lcom/alipay/mobile/about/ui/FloatWindowBigView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static viewHeight:I

.field public static viewWidth:I


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->J:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->R:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput v1, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->viewWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v0, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->viewHeight:I

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aF:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->Q:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->fF:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->be:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->a:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/mobile/about/ui/ab;

    invoke-direct {v5, p0, p1}, Lcom/alipay/mobile/about/ui/ab;-><init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/about/ui/ac;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/about/ui/ac;-><init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/about/ui/ad;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/about/ui/ad;-><init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/about/ui/af;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/about/ui/af;-><init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/about/ui/FloatWindowBigView;)Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/about/ui/FloatWindowBigView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->a:Landroid/os/Handler;

    return-object v0
.end method
