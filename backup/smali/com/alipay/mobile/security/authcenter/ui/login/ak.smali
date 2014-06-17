.class final Lcom/alipay/mobile/security/authcenter/ui/login/ak;
.super Lcom/androidquery/callback/BitmapAjaxCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/ak;->a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;

    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected final callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
