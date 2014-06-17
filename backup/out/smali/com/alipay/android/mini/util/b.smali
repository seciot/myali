.class final Lcom/alipay/android/mini/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/util/CardValidateInputUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/CardValidateInputUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/b;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
