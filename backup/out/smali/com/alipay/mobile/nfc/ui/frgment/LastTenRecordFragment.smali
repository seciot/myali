.class public Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;

.field private c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/16 v3, 0x8

    const/4 v4, 0x0

    sget v0, Lcom/alipay/mobile/nfc/R$layout;->b:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/nfc/R$id;->H:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->a:Landroid/widget/ListView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->v:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    new-instance v0, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->b:Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->b:Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->a(Lcom/alipay/nfc/model/CardInfo;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->b:Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->b:Lcom/alipay/mobile/nfc/ui/adapter/LastTenRecordListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nfc/R$string;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    goto :goto_0
.end method
