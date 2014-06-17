.class Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;-><init>(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;)Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->c(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->b(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->c(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget v1, v1, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->c(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    iget v1, v1, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->b:I

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;I)V

    return-void
.end method
