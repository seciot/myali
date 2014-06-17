.class public Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;
.super Landroid/support/v4/app/Fragment;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NFC/BusCard"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->a:Ljava/lang/String;

    sget v0, Lcom/alipay/mobile/nfc/R$layout;->c:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/nfc/R$id;->p:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->r:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->d:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->e:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->O:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->f:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->R:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->g:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->P:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->h:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->N:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->i:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->N:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->j:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->S:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->k:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->Q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->l:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v2, Lcom/alipay/mobile/nfc/R$drawable;->d:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    new-instance v2, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->f()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->e()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "name"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->l:Landroid/widget/TextView;

    const-string/jumbo v0, "name"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
