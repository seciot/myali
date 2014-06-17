.class Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->b:Ljava/util/List;

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
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;B)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->c:Landroid/view/LayoutInflater;

    sget v2, Lcom/alipay/mobile/nfc/R$layout;->g:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/alipay/mobile/nfc/R$id;->F:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;

    iget-object v1, v1, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
