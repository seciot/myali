.class public Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Landroid/widget/ImageView;

.field private e:I

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;)Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->b:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->c:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->e:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput p1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->b:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bz:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-array v1, v5, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v4, v2

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->e:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->d:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->M:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gr:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "idImageFiles"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v2, "curItem"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;[Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "\u9884\u89c8\u56fe\u50cf\u51fa\u9519"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(I)V

    return-void
.end method
