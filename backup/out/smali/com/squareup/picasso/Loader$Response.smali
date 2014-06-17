.class public Lcom/squareup/picasso/Loader$Response;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    iput-boolean p2, p0, Lcom/squareup/picasso/Loader$Response;->b:Z

    return-void
.end method
