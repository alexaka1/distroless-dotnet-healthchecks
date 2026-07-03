namespace ReleaseBinarySize;

internal sealed record BinarySizeMeasurement(
    string Variant,
    string Platform,
    long Executable,
    long Total);
