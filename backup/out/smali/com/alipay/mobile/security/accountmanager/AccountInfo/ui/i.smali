.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/i;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/i;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/i;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/i;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity_;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity_;Landroid/graphics/Bitmap;)V

    return-void
.end method
