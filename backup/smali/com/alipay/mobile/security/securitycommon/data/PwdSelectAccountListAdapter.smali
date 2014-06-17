.class public Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "accountList"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aW:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v3

    move-object p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p2}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget v5, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->fX:I

    invoke-virtual {v0, v3}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    sget v5, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    :cond_1
    iget-object v0, v7, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v7, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/helper/HideUtils;->hide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter$ViewHolder;

    move-object v7, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_5

    if-nez p1, :cond_4

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_top_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->getCount()I

    move-result v0

    if-le v0, v5, :cond_0

    if-nez p1, :cond_6

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_top_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/data/PwdSelectAccountListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_7

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_7
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_center_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
