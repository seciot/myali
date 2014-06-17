.class public final Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;
.super Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;


# instance fields
.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;-><init>()V

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->i:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->i:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aV:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->i:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->i:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gi:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cY:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cL:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->df:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fB:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->e:Lcom/alipay/mobile/commonui/widget/APView;

    return-void
.end method
