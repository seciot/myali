.class final Lcom/alipay/android/mini/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/mini/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/YearMonthPicker;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/m;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/mini/widget/m;->a:Z

    iput-boolean p3, p0, Lcom/alipay/android/mini/widget/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/m;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/m;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/mini/widget/m;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->increment(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/m;->c:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/mini/widget/m;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->decrement(Z)V

    goto :goto_0
.end method
