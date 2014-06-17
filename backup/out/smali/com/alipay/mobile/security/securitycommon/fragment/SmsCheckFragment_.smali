.class public final Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;
.super Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->h:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->g:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/Object;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->b(Z)V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$1;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$5;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$2;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$4;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dl:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dp:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->b()V

    return-void
.end method
