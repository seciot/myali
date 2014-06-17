.class final Lcom/alipay/android/mini/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/d;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/d;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #getter for: Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    return-void
.end method
