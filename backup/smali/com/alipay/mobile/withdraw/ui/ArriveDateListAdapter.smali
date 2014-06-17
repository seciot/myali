.class public Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->b:Ljava/util/List;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$layout;->a:I

    iput v0, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

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

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;-><init>()V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->k:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;->b:Landroid/widget/RadioButton;

    iget-object v0, v1, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;->b:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$drawable;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;->b:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter$ViewHolder;

    goto :goto_0
.end method
