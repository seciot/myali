.class public Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;
.super Landroid/widget/FrameLayout;
.source "GenericProgressView.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string/jumbo v0, "GenericProgressView"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->TAG:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/e;->q:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->TAG:Ljava/lang/String;

    .line 56
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->a:Landroid/widget/ProgressBar;

    .line 57
    sget v0, Lcom/alipay/mobile/onsitepay/d;->N:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->b:Landroid/widget/TextView;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->e:Z

    .line 59
    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->a:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->d:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->setIndeterminate(Z)V

    .line 62
    return-void

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->d:Z

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->c:Ljava/lang/CharSequence;

    .line 76
    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->e:Z

    .line 84
    return-void
.end method
