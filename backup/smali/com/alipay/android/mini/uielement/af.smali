.class final Lcom/alipay/android/mini/uielement/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UISimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UISimplePassword;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/af;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/af;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(Lcom/alipay/android/mini/uielement/UISimplePassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    return-void
.end method
