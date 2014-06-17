.class public Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/alipay/nfc/model/CardInfo;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/model/LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->c:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/nfc/model/CardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->a:Lcom/alipay/nfc/model/CardInfo;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/model/LogInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->b:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x8

    if-nez p2, :cond_0

    new-instance v1, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;B)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->c:Landroid/view/LayoutInflater;

    sget v2, Lcom/alipay/mobile/nfc/R$layout;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/alipay/mobile/nfc/R$id;->j:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    iput-object v0, v1, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    iget-object v0, v1, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/nfc/model/LogInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->getLeftTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->f()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/nfc/model/CardTypeEnum;->TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->getmLeftTextView2()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText3(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/nfc/R$color;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_3
    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->getmLeftTextView2()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText2(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/nfc/model/LogInfo;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/nfc/R$color;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/nfc/R$color;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_3
.end method
