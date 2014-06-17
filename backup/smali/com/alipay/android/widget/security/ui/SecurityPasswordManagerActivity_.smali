.class public final Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# instance fields
.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->f()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a()V

    return-void
.end method

.method private h()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bC:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ds:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bm:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cM:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bD:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APExtTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->c:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ck:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$17;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$17;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$11;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$11;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$13;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$13;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$14;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$14;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$10;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$10;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$7;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$12;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$12;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$8;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aQ:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->h()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->h()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->h()V

    return-void
.end method
