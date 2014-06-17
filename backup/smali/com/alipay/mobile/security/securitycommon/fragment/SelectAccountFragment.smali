.class public Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "security_selectaccount_fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pwd_selectAccount_userListView"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "toRegistAccount"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "registAccountLayout"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "otherAccountTip"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "seperatorStub"
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

.field protected h:Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;

.field private i:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->h:Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->h:Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(ILcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->i:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->i:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;->a(ILcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;",
            ">;",
            "Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;",
            "Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;",
            ")V"
        }
    .end annotation

    const/4 v2, -0x1

    iput-object p4, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->i:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->g:Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->h:Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a(Ljava/util/List;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p3}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    if-eq v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->h:Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->g:Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->e:Lcom/alipay/mobile/commonui/widget/APView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->g:Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/SecurityUtil;->accountHide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$1;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$2;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->e:Lcom/alipay/mobile/commonui/widget/APView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APView;->setVisibility(I)V

    goto :goto_0
.end method
