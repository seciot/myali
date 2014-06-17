.class public Lcom/alipay/mobile/alipassapp/ui/common/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/ViewGroup;

.field private e:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private f:Lcom/alipay/mobile/alipassapp/ui/common/p;

.field private g:Landroid/os/Handler;

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->e:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->f:Lcom/alipay/mobile/alipassapp/ui/common/p;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/common/k;Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->main_alipass_nonetwork:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->nonetwork_titleBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-static {p1, p2, v0, p3}, Lcom/alipay/mobile/alipassapp/ui/common/aj;->a(Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->networknotreachableview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/o;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassapp/ui/common/o;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/common/k;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/common/k;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->e:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/common/k;)Lcom/alipay/mobile/alipassapp/ui/common/p;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->f:Lcom/alipay/mobile/alipassapp/ui/common/p;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/k;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/k;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/m;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/alipassapp/ui/common/m;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/k;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/commonui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/common/rpc/RpcException;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/k;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/common/l;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
