.class final Lcom/alipay/android/app/pay/g;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alipay/android/app/pay/HyperlinkActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/app/pay/g;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/android/app/pay/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
