.class public final Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;
.super Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;


# instance fields
.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->K:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->T:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->J:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->U:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/bf;-><init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/be;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/be;-><init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aw:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->b()V

    return-void
.end method
