.class public Lcom/alipay/android/phone/home/widget/ActiveTopTips;
.super Landroid/widget/LinearLayout;
.source "ActiveTopTips.java"


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
    const/16 v0, 0x1c

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->d:I

    .line 21
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->e:I

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x1c

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->d:I

    .line 21
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->e:I

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->m:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->p:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->a:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->b:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->c:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->setOrientation(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    return-void
.end method

.method public setTipsText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
