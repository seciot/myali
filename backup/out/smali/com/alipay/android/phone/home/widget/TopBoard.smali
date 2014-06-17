.class public Lcom/alipay/android/phone/home/widget/TopBoard;
.super Landroid/widget/RelativeLayout;
.source "TopBoard.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/16 v0, 0x52

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->d:I

    .line 22
    iput v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->e:I

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/TopBoard;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x52

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->d:I

    .line 22
    iput v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->e:I

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/TopBoard;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/TopBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->a:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/TopBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->b:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/TopBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->c:Landroid/widget/TextView;

    .line 41
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->d:I

    iget v2, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->e:I

    invoke-static {v0, p1, v1, v2}, Lcom/alipay/android/phone/home/util/ImageLoadHelper;->a(Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/TopBoard;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
