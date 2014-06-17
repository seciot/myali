.class public final Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;
.super Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;


# instance fields
.field private j:Landroid/view/View;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->k:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->b(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->a(Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/sms/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/e;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/sms/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/b;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/sms/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/c;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/sms/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/g;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/sms/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/d;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/sms/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/f;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/sms/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/h;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->j:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->bd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->j:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->j:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aC:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aD:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fM:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->c()V

    return-void
.end method
