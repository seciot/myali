.class public final Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;
.super Lcom/alipay/android/phone/home/ui/AppsCenterFragment;
.source "AppsCenterFragment_.java"


# instance fields
.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;-><init>()V

    .line 63
    return-void
.end method

.method public static builder()Lcom/alipay/android/phone/home/ui/AppsCenterFragment_$FragmentBuilder_;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_$FragmentBuilder_;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_$FragmentBuilder_;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 41
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Landroid/view/View;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->a:Lcom/alipay/mobile/commonui/widget/APGridView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->afterView()V

    .line 50
    return-void
.end method
