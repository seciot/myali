.class final Lcom/alipay/android/mini/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/h;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #getter for: Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/mini/widget/h;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #calls: Lcom/alipay/android/mini/widget/MiniLabelInput;->a()V
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$200(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    return-void
.end method
