.class public Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->b:Ljava/util/ArrayList;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$layout;->c:I

    iput v0, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;-><init>()V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->j:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->i:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->k:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->d:Landroid/widget/RadioButton;

    iget-object v0, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->d:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$drawable;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5c3e\u53f7"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "BANK_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->getLocalImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v1, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
