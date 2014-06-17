.class public Landroid/webkit/ConsoleMessage;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/webkit/ConsoleMessage$MessageLevel;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/ConsoleMessage;->b:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/ConsoleMessage;->c:Ljava/lang/String;

    iput p3, p0, Landroid/webkit/ConsoleMessage;->d:I

    iput-object p4, p0, Landroid/webkit/ConsoleMessage;->a:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-void
.end method


# virtual methods
.method public lineNumber()I
    .locals 1

    iget v0, p0, Landroid/webkit/ConsoleMessage;->d:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
    .locals 1

    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->a:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->c:Ljava/lang/String;

    return-object v0
.end method
