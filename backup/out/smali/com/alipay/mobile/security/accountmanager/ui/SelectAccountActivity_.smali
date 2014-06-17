.class public final Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;


# instance fields
.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fp:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/dp;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/dp;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/dq;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/dq;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/do;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/do;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aU:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->c()V

    return-void
.end method
