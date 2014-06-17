.class final Lcom/alipay/android/app/display/uielement/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/ArrayAdapter;

.field final synthetic c:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/widget/TextView;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/am;->c:Lcom/alipay/android/app/display/uielement/UICombobox;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/am;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alipay/android/app/display/uielement/am;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/am;->c:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0, p2}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;I)I

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/am;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/am;->b:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/am;->c:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/UICombobox;->e(Lcom/alipay/android/app/display/uielement/UICombobox;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/am;->c:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->d(Lcom/alipay/android/app/display/uielement/UICombobox;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/am;->c:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    return-void
.end method
