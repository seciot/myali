.class public final Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;
.super Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;


# instance fields
.field private f:Landroid/view/View;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->j:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->f:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/sms/j;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/j;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/sms/k;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/k;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->f:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->be:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->f:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->f:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cF:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aE:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->c()V

    return-void
.end method
