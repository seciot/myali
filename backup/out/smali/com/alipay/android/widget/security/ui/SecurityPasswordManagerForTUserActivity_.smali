.class public final Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;


# instance fields
.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->q:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ck:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cM:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->d:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dr:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bm:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ds:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->q:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->q:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->q:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->q:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aR:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->d()V

    return-void
.end method
