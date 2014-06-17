.class final Lcom/alipay/mobile/deviceAuthorization/ui/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ay;->c:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ay;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ay;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ay;->c:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ay;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ay;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;->a(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
