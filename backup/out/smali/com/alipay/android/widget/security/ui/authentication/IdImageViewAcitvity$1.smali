.class Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->a:[Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;Ljava/util/List;)Ljava/util/List;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/alipay/mobile/security/securitycommon/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->a(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;->e(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
