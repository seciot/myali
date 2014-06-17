.class public final Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;


# instance fields
.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fu:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/k;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/n;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/n;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/p;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/p;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/m;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/l;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/l;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/h;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/i;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/i;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/j;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/j;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/o;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aZ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->d()V

    return-void
.end method
