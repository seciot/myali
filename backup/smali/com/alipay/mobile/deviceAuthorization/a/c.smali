.class final Lcom/alipay/mobile/deviceAuthorization/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/a/b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/a/c;->b:Lcom/alipay/mobile/deviceAuthorization/a/b;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/a/c;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/c;->b:Lcom/alipay/mobile/deviceAuthorization/a/b;

    iget-object v0, v0, Lcom/alipay/mobile/deviceAuthorization/a/b;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/a/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
